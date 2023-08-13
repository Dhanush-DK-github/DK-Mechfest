package com.acgcetmechfest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.acgcetmechfest.entity.Suggestion;

public interface SuggestionRepository extends JpaRepository<Suggestion, Integer> {

	
}
