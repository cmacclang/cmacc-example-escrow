Feature: Escrow

  Scenario: Escrow
    Given I compile "Escrow.cmacc"
    Then it contains the following variables and values:
      | seller.full_Name     | name_Full |
      | purchaser.full_Name  | name_Full |
      | escrow.full_Name     | name_Full |
      | arbitrator.full_Name | name_Full |
      | shipper.full_Name    | name_Full |

  Scenario: Step1_Parties
    Given I compile "Step1_Parties.cmacc"
    Then it contains the following variables and values:
      | seller.full_Name          | Gerry's Grapes, LLC                                |
      | escrow.full_Name          | Safe Hands Facilitated Transactions, Inc.          |
      | arbitrator.full_Name      | {{individual.first_Name}} {{individual.last_Name}} |
      | shipper.full_Name         | Fabulous Express, Inc.                             |
      | deal.seller.full_Name     | Gerry's Grapes, LLC                                |
      | deal.purchaser.full_Name  | name_Full                                          |
      | deal.escrow.full_Name     | Safe Hands Facilitated Transactions, Inc.          |
      | deal.arbitrator.full_Name | {{individual.first_Name}} {{individual.last_Name}} |
      | deal.shipper.full_Name    | Fabulous Express, Inc.                             |

  Scenario: Step2_Order
    Given I compile "Step2_Order.cmacc"
    Then it contains the following variables and values:
      | purchaser.full_Name       | {{individual.first_Name}} {{individual.last_Name}} |
      | deal.seller.full_Name     | Gerry's Grapes, LLC                                |
      | deal.purchaser.full_Name  | {{individual.first_Name}} {{individual.last_Name}} |
      | deal.escrow.full_Name     | Safe Hands Facilitated Transactions, Inc.          |
      | deal.arbitrator.full_Name | {{individual.first_Name}} {{individual.last_Name}} |
      | deal.shipper.full_Name    | Fabulous Express, Inc.                             |

  Scenario: Step3_Signature
    Given I compile "Step3_Signature.cmacc"
    Then it contains the following variables and values:
      | sign_Block.party1.sign_Rep.first_Name | Geraldine |
      | sign_Block.party2.sign_Rep.first_Name | Roberta   |
      | sign_Block.party3.sign_Rep.first_Name | Samuel    |
      | sign_Block.party4.sign_Rep.first_Name | Solomon   |

  Scenario: Step4_Claim
    Given I compile "Step4_Claim.cmacc"
    Then it contains the following variables and values:
      | claim.seller.full_Name     | Gerry's Grapes, LLC                                |
      | claim.purchaser.full_Name  | {{individual.first_Name}} {{individual.last_Name}} |
      | claim.escrow.full_Name     | Safe Hands Facilitated Transactions, Inc.          |
      | claim.shipper.full_Name    | Fabulous Express, Inc.                             |
      | claim.product_Description  | eighteen cases of grape preserves                  |
      | claim.escrow_Effective_YMD | 2014-08-13                                         |

  Scenario: Step5_Response
    Given I compile "Step5_Response.cmacc"
    Then it contains the following variables and values:
      | response.seller.full_Name    | Gerry's Grapes, LLC                                |
      | response.purchaser.full_Name | {{individual.first_Name}} {{individual.last_Name}} |
      | response.escrow.full_Name    | Safe Hands Facilitated Transactions, Inc.          |
      | response.claim_YMD           | 2014-08-16                                         |
