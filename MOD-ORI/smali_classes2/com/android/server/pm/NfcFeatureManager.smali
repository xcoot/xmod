.class public abstract Lcom/android/server/pm/NfcFeatureManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static updateFeatureAndPackage(Landroid/util/ArrayMap;Lcom/samsung/android/server/pm/install/SkippingApks;)V
    .locals 7

    .line 1
    const-string v0, "NfcFeatureManager"

    .line 2
    .line 3
    const-string/jumbo v1, "ro.boot.product.hardware.sku"

    .line 4
    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "hcesimese"

    .line 13
    .line 14
    const-string v3, "hceese"

    .line 15
    .line 16
    const-string v4, "hcesim"

    .line 17
    .line 18
    const-string v5, "hce"

    .line 19
    .line 20
    const-string v6, "disabled"

    .line 21
    .line 22
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_7

    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const-string v3, "android.hardware.nfc.ese"

    .line 41
    .line 42
    const-string v4, "android.hardware.nfc.uicc"

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    :try_start_1
    const-string v1, "android.hardware.nfc"

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string v1, "android.hardware.nfc.hce"

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string v1, "android.hardware.nfc.hcef"

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v1, "android.hardware.nfc.any"

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string v1, "android.sofware.nfc.beam"

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-string v1, "com.nxp.mifare"

    .line 80
    .line 81
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_0
    const-string p0, "cannot remove NFC features"

    .line 89
    .line 90
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :goto_0
    if-eqz p1, :cond_1

    .line 94
    .line 95
    const-string p0, "Nfc.apk"

    .line 96
    .line 97
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string p0, "NfcNci.apk"

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string p0, "NfcFn.apk"

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string p0, "NfcTest.apk"

    .line 111
    .line 112
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string p0, "NfcTag.apk"

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string p0, "Tag.apk"

    .line 121
    .line 122
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string p0, "SamsungNfcTag.apk"

    .line 126
    .line 127
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string p0, "NfcFactoryCard.apk"

    .line 131
    .line 132
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    const-string p0, "cannot remove NFC packages"

    .line 137
    .line 138
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :goto_1
    const-string/jumbo p0, "removed NFC features and packages"

    .line 142
    .line 143
    .line 144
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_2
    const-string/jumbo p1, "ro.vendor.nfc.support.uicc"

    .line 149
    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_3

    .line 157
    .line 158
    const-string/jumbo p1, "sim"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_3

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    if-eqz p0, :cond_4

    .line 169
    .line 170
    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    const-string/jumbo p1, "removed SIM feature"

    .line 174
    .line 175
    .line 176
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_4
    const-string p1, "cannot remove SIM feature"

    .line 181
    .line 182
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :goto_2
    const-string/jumbo p1, "ro.vendor.nfc.support.ese"

    .line 186
    .line 187
    .line 188
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_5

    .line 193
    .line 194
    const-string p1, "ese"

    .line 195
    .line 196
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_5

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_5
    if-eqz p0, :cond_6

    .line 204
    .line 205
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    const-string/jumbo p0, "removed eSE feature"

    .line 209
    .line 210
    .line 211
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_6
    const-string p0, "cannot remove eSE feature"

    .line 216
    .line 217
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :goto_3
    const-string p1, "Unexpected exception: "

    .line 222
    .line 223
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .line 225
    .line 226
    :cond_7
    :goto_4
    return-void
.end method
