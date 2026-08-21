def calculate_risk(
    bite_reports,
    unvaccinated_percentage,
    dog_density,
    suspected_dogs
):

    risk_score = (
        bite_reports * 0.35
        + unvaccinated_percentage * 0.35
        + dog_density * 0.15
        + suspected_dogs * 0.15
    )

    if risk_score >= 70:
        risk_level = "HIGH"

    elif risk_score >= 40:
        risk_level = "MEDIUM"

    else:
        risk_level = "LOW"

    return risk_score, risk_level


# Example
score, level = calculate_risk(
    bite_reports=20,
    unvaccinated_percentage=60,
    dog_density=30,
    suspected_dogs=10
)

print("RabiesGuard Risk Score:", round(score, 2))
print("Risk Level:", level)