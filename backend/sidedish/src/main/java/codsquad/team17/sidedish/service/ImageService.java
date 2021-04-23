package codsquad.team17.sidedish.service;

import codsquad.team17.sidedish.domain.Image;
import codsquad.team17.sidedish.repository.ImageRepository;
import org.springframework.stereotype.Service;

@Service
public class ImageService {
    private final ImageRepository imageRepository;

    public ImageService(ImageRepository imageRepository) {
        this.imageRepository = imageRepository;
    }

    public Image findTopImageByItemId(Long itemId) {
        return imageRepository.findTopImageByItemId(itemId)
                .orElseThrow(RuntimeException::new);
    }
}
