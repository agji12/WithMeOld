package wm.spring.services;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class RecordService {
	
	@Value("${RiotApi-Key}")
	private String riotApiKey;
	
}
