package org.choongang.member.services;

import lombok.RequiredArgsConstructor;
import org.choongang.global.config.annotations.Service;
import org.choongang.member.controllers.RequestMypage;
import org.choongang.member.entities.Member;
import org.choongang.member.mappers.MemberMapper;

@Service
@RequiredArgsConstructor
public class MypageService {
    private final MemberMapper mapper;

    public void getInfo(String email) {

        Member member = mapper.get(email);
        RequestMypage form = new RequestMypage();
    }

}
