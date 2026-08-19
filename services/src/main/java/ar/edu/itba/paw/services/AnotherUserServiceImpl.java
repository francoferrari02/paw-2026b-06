package ar.edu.itba.paw.services;

import org.springframework.stereotype.Service;

@Service
public class AnotherUserServiceImpl implements UserService {
    @Override
    public String findById(long id) {
        return "PAW";
    }
}
