.class public abstract Lcom/android/server/autofill/HintsHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getHintsForSaveType(I)Ljava/util/Set;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const-string/jumbo v2, "username"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "newUsername"

    .line 11
    .line 12
    .line 13
    if-eq p0, v1, :cond_4

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq p0, v1, :cond_3

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq p0, v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    if-eq p0, v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x10

    .line 26
    .line 27
    if-eq p0, v1, :cond_0

    .line 28
    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    if-eq p0, v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x40

    .line 34
    .line 35
    if-eq p0, v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x80

    .line 38
    .line 39
    if-eq p0, v1, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    const-string/jumbo p0, "emailAddress"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    const-string/jumbo p0, "creditCardExpirationDate"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    const-string/jumbo p0, "creditCardExpirationDay"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    const-string/jumbo p0, "creditCardExpirationMonth"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    const-string/jumbo p0, "creditCardExpirationYear"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    const-string/jumbo p0, "creditCardNumber"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string/jumbo p0, "creditCardSecurityCode"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_3
    const-string/jumbo p0, "postalAddress"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    const-string p0, "aptNumber"

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    const-string p0, "addressCountry"

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    const-string/jumbo p0, "dependentLocality"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    const-string/jumbo p0, "extendedAddress"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    const-string/jumbo p0, "extendedPostalCode"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    const-string p0, "addressLocality"

    .line 128
    .line 129
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    const-string p0, "addressRegion"

    .line 133
    .line 134
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    const-string/jumbo p0, "streetAddress"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    const-string/jumbo p0, "postalCode"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_4
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    const-string/jumbo p0, "newPassword"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    const-string/jumbo p0, "password"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    return-object v0
.end method
