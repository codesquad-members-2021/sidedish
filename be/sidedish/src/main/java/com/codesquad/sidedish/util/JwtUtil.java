package com.codesquad.sidedish.util;

import com.codesquad.sidedish.user.domain.User;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

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
        Jws<Claims> claims = Jwts.parser().setSigningKey(serverSecretKey).parseClaimsJws(jwtToken);
        return !claims.getBody().getExpiration().before(new Date());
    }
}
