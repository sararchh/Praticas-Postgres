SELECT testimonials.id,testimonials.message, userwriter.name writer, userrecipient.name recipient  FROM testimonials JOIN users userwriter ON userwriter.id = testimonials."writerId" JOIN users userrecipient ON userrecipient.id = testimonials."recipientId" ; 