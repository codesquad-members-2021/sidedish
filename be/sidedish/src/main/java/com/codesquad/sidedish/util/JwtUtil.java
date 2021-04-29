package com.codesquad.sidedish.util;

import com.codesquad.sidedish.global.exception.InvalidJwtTokenException;
import com.codesquad.sidedish.user.domain.User;
import io.jsonwebtoken.*;

import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Date;

public class JwtUtil {
    private static String serverSecretKey;
    private static final String issuer = "sidedish";
    private static final long tokenValidTime = 6 * 60 * 60 * 1000L;

    private JwtUtil() {
    }

    public static void initServerSecretKey() {
        serverSecretKey = Base64.getEncoder().encodeToString(SecretUtil.serverSecret().getBytes(StandardCharsets.UTF_8));
    }

    public static String createToken(User user) {
        Claims claims = Jwts.claims();
        claims.put("userId", user.getUserId());
        Date now = new Date();
        return Jwts.builder()
                .signWith(SignatureAlgorithm.HS256, serverSecretKey)
                .setClaims(claims)
                .setIssuer(issuer)
                .setIssuedAt(now)
                .setExpiration(new Date(now.getTime() + tokenValidTime))
                .compact();
    }

    public static boolean validateToken(String jwtToken) {
        try {
            Jws<Claims> claims = Jwts.parser().setSigningKey(serverSecretKey).parseClaimsJws(jwtToken);
            return !claims.getBody().getExpiration().before(new Date());
        } catch (ExpiredJwtException e) {
            throw new InvalidJwtTokenException(InvalidJwtTokenException.EXPIRED_JWT_EXCEPTION);
        } catch (UnsupportedJwtException e) {
            throw new InvalidJwtTokenException(InvalidJwtTokenException.UNSUPPORTED_JWT_EXCEPTION);
        } catch (MalformedJwtException e) {
            throw new InvalidJwtTokenException(InvalidJwtTokenException.MALFORMED_JWT_EXCEPTION);
        } catch (SignatureException e) {
            throw new InvalidJwtTokenException(InvalidJwtTokenException.SIGNATURE_EXCEPTION);
        } catch (IllegalArgumentException e) {
            throw new InvalidJwtTokenException(InvalidJwtTokenException.ILLEGAL_ARGUMENT_EXCEPTION);
        }
    }
}
