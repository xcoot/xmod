.class public abstract Lcom/android/server/autofill/HintsHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getHintsForSaveType(I)Ljava/util/Set;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    const-string/jumbo v2, "username"

    .line 10
    const-string/jumbo v3, "newUsername"

    .line 13
    if-eq p0, v1, :cond_4

    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq p0, v1, :cond_3

    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq p0, v1, :cond_2

    .line 21
    const/16 v1, 0x8

    .line 23
    if-eq p0, v1, :cond_1

    .line 25
    const/16 v1, 0x10

    .line 27
    if-eq p0, v1, :cond_0

    .line 29
    const/16 v1, 0x20

    .line 31
    if-eq p0, v1, :cond_2

    .line 33
    const/16 v1, 0x40

    .line 35
    if-eq p0, v1, :cond_2

    .line 37
    const/16 v1, 0x80

    .line 39
    if-eq p0, v1, :cond_2

    .line 41
    return-object v0

    .line 42
    :cond_0
    const-string/jumbo p0, "emailAddress"

    .line 45
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    return-object v0

    .line 49
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 55
    return-object v0

    .line 56
    :cond_2
    const-string/jumbo p0, "creditCardExpirationDate"

    .line 59
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 62
    const-string/jumbo p0, "creditCardExpirationDay"

    .line 65
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    const-string/jumbo p0, "creditCardExpirationMonth"

    .line 71
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 74
    const-string/jumbo p0, "creditCardExpirationYear"

    .line 77
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 80
    const-string/jumbo p0, "creditCardNumber"

    .line 83
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 86
    const-string/jumbo p0, "creditCardSecurityCode"

    .line 89
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 92
    return-object v0

    .line 93
    :cond_3
    const-string/jumbo p0, "postalAddress"

    .line 96
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 99
    const-string p0, "aptNumber"

    .line 101
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 104
    const-string p0, "addressCountry"

    .line 106
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 109
    const-string/jumbo p0, "dependentLocality"

    .line 112
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 115
    const-string/jumbo p0, "extendedAddress"

    .line 118
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 121
    const-string/jumbo p0, "extendedPostalCode"

    .line 124
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 127
    const-string p0, "addressLocality"

    .line 129
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 132
    const-string p0, "addressRegion"

    .line 134
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 137
    const-string/jumbo p0, "streetAddress"

    .line 140
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 143
    const-string/jumbo p0, "postalCode"

    .line 146
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 149
    return-object v0

    .line 150
    :cond_4
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 156
    const-string/jumbo p0, "newPassword"

    .line 159
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 162
    const-string/jumbo p0, "password"

    .line 165
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 168
    return-object v0
.end method
