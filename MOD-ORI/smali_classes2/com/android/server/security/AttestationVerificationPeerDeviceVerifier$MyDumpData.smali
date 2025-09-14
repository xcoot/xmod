.class public final Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAttestationParametersOk:Z

.field public mAttestationVersionAtLeast3:Z

.field public mBindingOk:Z

.field public mBindingType:I

.field public mBootStateIsVerified:Z

.field public mCertChainOk:Z

.field public mCertPathValidatorAvailable:Z

.field public mCertificationFactoryAvailable:Z

.field public mEventNumber:I

.field public mEventTimeMs:J

.field public mKeyBootPatchLevelInRange:Z

.field public mKeyHwBacked:Z

.field public mKeyVendorPatchLevelInRange:Z

.field public mKeymasterHwBacked:Z

.field public mKeymasterVersionAtLeast4:Z

.field public mOsPatchLevelInRange:Z

.field public mOsVersionAtLeast10:Z

.field public mResult:I

.field public mSystemOwned:Z

.field public mSystemOwnershipChecked:Z

.field public mVerifiedBootStateLocked:Z


# direct methods
.method public static booleanToOkFail(Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string p0, "OK"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p0, "FAILURE"

    .line 7
    .line 8
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final dumpTo(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Result: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mResult:I

    .line 9
    .line 10
    invoke-static {v1}, Landroid/security/attestationverification/AttestationVerificationManager;->verificationResultCodeToString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertificationFactoryAvailable:Z

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string p0, "Certificate Factory Unavailable"

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertPathValidatorAvailable:Z

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string p0, "Cert Path Validator Unavailable"

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationParametersOk:Z

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    const-string p0, "Attestation parameters set incorrectly."

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertChainOk:Z

    .line 55
    .line 56
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "Certificate Chain Valid (inc. Trust Anchor): "

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertChainOk:Z

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingOk:Z

    .line 75
    .line 76
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "Local Binding: "

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 90
    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v1, "Binding Type: "

    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingType:I

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 112
    .line 113
    .line 114
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwnershipChecked:Z

    .line 115
    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwned:Z

    .line 119
    .line 120
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v1, "System Ownership: "

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    const-string v0, "KeyStore Attestation Parameters"

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 139
    .line 140
    .line 141
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsVersionAtLeast10:Z

    .line 142
    .line 143
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v1, "OS Version >= 10: "

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsPatchLevelInRange:Z

    .line 157
    .line 158
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v1, "OS Patch Level in Range: "

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationVersionAtLeast3:Z

    .line 172
    .line 173
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v1, "Attestation Version >= 3: "

    .line 178
    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterVersionAtLeast4:Z

    .line 187
    .line 188
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const-string v1, "Keymaster Version >= 4: "

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterHwBacked:Z

    .line 202
    .line 203
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const-string v1, "Keymaster HW-Backed: "

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyHwBacked:Z

    .line 217
    .line 218
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const-string v1, "Key is HW Backed: "

    .line 223
    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBootStateIsVerified:Z

    .line 232
    .line 233
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    const-string v1, "Boot State is VERIFIED: "

    .line 238
    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mVerifiedBootStateLocked:Z

    .line 247
    .line 248
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v1, "Verified Boot is LOCKED: "

    .line 253
    .line 254
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyBootPatchLevelInRange:Z

    .line 262
    .line 263
    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const-string v1, "Key Boot Level in Range: "

    .line 268
    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-boolean p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyVendorPatchLevelInRange:Z

    .line 277
    .line 278
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    const-string v0, "Key Vendor Patch Level in Range: "

    .line 283
    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 292
    .line 293
    .line 294
    return-void
.end method
