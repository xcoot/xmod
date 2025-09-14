.class public final Lcom/android/server/devicepolicy/PolicyState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

.field public final mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

.field public final mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/PolicyDefinition;Ljava/util/LinkedHashMap;Landroid/app/admin/PolicyValue;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 6
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    return-void
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/PolicyState;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move-object v3, v2

    .line 12
    move-object v4, v3

    .line 13
    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 16
    move-result v5

    .line 17
    const-string v6, "PolicyState"

    .line 19
    if-eqz v5, :cond_f

    .line 21
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const-string/jumbo v7, "policy with definition "

    .line 31
    const/4 v8, -0x1

    .line 32
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 35
    move-result v9

    .line 36
    sparse-switch v9, :sswitch_data_0

    .line 39
    goto :goto_1

    .line 40
    :sswitch_0
    const-string/jumbo v9, "resolved-value-entry"

    .line 43
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v9

    .line 47
    if-nez v9, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v8, 0x2

    .line 51
    goto :goto_1

    .line 52
    :sswitch_1
    const-string v9, "admin-policy-entry"

    .line 54
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v9

    .line 58
    if-nez v9, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v8, 0x1

    .line 62
    goto :goto_1

    .line 63
    :sswitch_2
    const-string/jumbo v9, "policy-definition-entry"

    .line 66
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v9

    .line 70
    if-nez v9, :cond_3

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const/4 v8, 0x0

    .line 74
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 77
    const-string v7, "Unknown tag: "

    .line 79
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v5

    .line 83
    invoke-static {v6, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    goto :goto_0

    .line 87
    :pswitch_0
    if-nez v3, :cond_4

    .line 89
    const-string v5, "Error Parsing TAG_RESOLVED_VALUE_ENTRY, policyDefinition is null"

    .line 91
    invoke-static {v6, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    iget-object v4, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    .line 97
    invoke-virtual {v4, p0}, Lcom/android/server/devicepolicy/PolicySerializer;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;

    .line 100
    move-result-object v4

    .line 101
    if-nez v4, :cond_0

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    const-string v8, "Error Parsing TAG_RESOLVED_VALUE_ENTRY for "

    .line 107
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v7, ", currentResolvedPolicy is null"

    .line 127
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v5

    .line 134
    invoke-static {v6, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    goto :goto_0

    .line 138
    :pswitch_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 141
    move-result v5

    .line 142
    move-object v8, v2

    .line 143
    move-object v9, v8

    .line 144
    :cond_5
    :goto_2
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 147
    move-result v10

    .line 148
    if-eqz v10, :cond_8

    .line 150
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 153
    move-result-object v10

    .line 154
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    const-string/jumbo v11, "enforcing-admin-entry"

    .line 160
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    move-result v11

    .line 164
    if-nez v11, :cond_7

    .line 166
    const-string/jumbo v11, "policy-value-entry"

    .line 169
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v10

    .line 173
    if-nez v10, :cond_6

    .line 175
    goto :goto_2

    .line 176
    :cond_6
    iget-object v9, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    .line 178
    invoke-virtual {v9, p0}, Lcom/android/server/devicepolicy/PolicySerializer;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;

    .line 181
    move-result-object v9

    .line 182
    if-nez v9, :cond_5

    .line 184
    const-string v10, "Error Parsing TAG_POLICY_VALUE_ENTRY, PolicyValue is null"

    .line 186
    invoke-static {v6, v10}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    goto :goto_2

    .line 190
    :cond_7
    invoke-static {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 193
    move-result-object v8

    .line 194
    if-nez v8, :cond_5

    .line 196
    const-string v10, "Error Parsing TAG_ENFORCING_ADMIN_ENTRY, EnforcingAdmin is null"

    .line 198
    invoke-static {v6, v10}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    goto :goto_2

    .line 202
    :cond_8
    if-eqz v8, :cond_9

    .line 204
    if-eqz v9, :cond_9

    .line 206
    invoke-virtual {v0, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    goto/16 :goto_0

    .line 211
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 213
    const-string v10, "Error Parsing TAG_ADMIN_POLICY_ENTRY for "

    .line 215
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    if-nez v3, :cond_a

    .line 220
    const-string/jumbo v7, "unknown policy"

    .line 223
    goto :goto_3

    .line 224
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v7

    .line 236
    :goto_3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v7, ", EnforcingAdmin is: "

    .line 241
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string/jumbo v7, "null"

    .line 247
    if-nez v8, :cond_b

    .line 249
    move-object v8, v7

    .line 250
    :cond_b
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    const-string v8, ", value is : "

    .line 255
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    if-nez v9, :cond_c

    .line 260
    move-object v9, v7

    .line 261
    :cond_c
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object v5

    .line 268
    invoke-static {v6, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    goto/16 :goto_0

    .line 273
    :pswitch_2
    invoke-static {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->readPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    .line 276
    move-result-object v3

    .line 277
    const-string v5, "PolicyDefinition"

    .line 279
    if-nez v3, :cond_d

    .line 281
    const-string v3, "Error parsing PolicyDefinition, PolicyKey is null."

    .line 283
    invoke-static {v5, v3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_4
    move-object v3, v2

    .line 287
    goto :goto_5

    .line 288
    :cond_d
    sget-object v7, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 290
    invoke-virtual {v3}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    .line 293
    move-result-object v8

    .line 294
    check-cast v7, Ljava/util/HashMap;

    .line 296
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    move-result-object v7

    .line 300
    check-cast v7, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 302
    if-nez v7, :cond_e

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    .line 306
    const-string v8, "Unknown generic policy key: "

    .line 308
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v3

    .line 318
    invoke-static {v5, v3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    goto :goto_4

    .line 322
    :cond_e
    invoke-virtual {v7, v3}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 325
    move-result-object v3

    .line 326
    :goto_5
    if-nez v3, :cond_0

    .line 328
    const-string v5, "Error Parsing TAG_POLICY_DEFINITION_ENTRY, PolicyDefinition is null"

    .line 330
    invoke-static {v6, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    goto/16 :goto_0

    .line 335
    :cond_f
    if-eqz v3, :cond_10

    .line 337
    new-instance p0, Lcom/android/server/devicepolicy/PolicyState;

    .line 339
    invoke-direct {p0, v3, v0, v4}, Lcom/android/server/devicepolicy/PolicyState;-><init>(Lcom/android/server/devicepolicy/PolicyDefinition;Ljava/util/LinkedHashMap;Landroid/app/admin/PolicyValue;)V

    .line 342
    return-object p0

    .line 343
    :cond_10
    const-string p0, "Error parsing policyState, policyDefinition is null"

    .line 345
    invoke-static {v6, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-object v2

    .line 349
    :sswitch_data_0
    .sparse-switch
        0x178af2b3 -> :sswitch_2
        0x2972cdd5 -> :sswitch_1
        0x3178aec1 -> :sswitch_0
    .end sparse-switch

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 16
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p2, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 26
    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 28
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/ResolutionMechanism;->resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 34
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result p2

    .line 38
    xor-int/lit8 p2, p2, 0x1

    .line 40
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 42
    move p0, p2

    .line 43
    :goto_0
    return p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 3
    iget-object v1, v0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 5
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 11
    const-string v1, "Per-admin Policy:"

    .line 13
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 19
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 21
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 27
    const-string/jumbo v1, "null"

    .line 30
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 36
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v1

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 56
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 62
    iget-object v3, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 64
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 78
    iget-object v0, v0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 92
    const-string v1, "Resolved Policy (%s):\n"

    .line 94
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 97
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 100
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 102
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 108
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 111
    return-void
.end method

.method public final getParcelablePolicyState()Landroid/app/admin/PolicyState;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 28
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getParcelableAdmin()Landroid/app/admin/EnforcingAdmin;

    .line 31
    move-result-object v3

    .line 32
    iget-object v4, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 34
    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/app/admin/PolicyValue;

    .line 40
    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Landroid/app/admin/PolicyState;

    .line 46
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 48
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 50
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 52
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;->getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;

    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v1, v0, v2, p0}, Landroid/app/admin/PolicyState;-><init>(Ljava/util/LinkedHashMap;Landroid/app/admin/PolicyValue;Landroid/app/admin/ResolutionMechanism;)V

    .line 59
    return-object v1
.end method

.method public final getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 5
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 8
    return-object v0
.end method

.method public final resolvePolicy(Ljava/util/LinkedHashMap;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 13
    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 16
    iget-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 18
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 21
    iget-object p1, v0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 23
    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/ResolutionMechanism;->resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 29
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    xor-int/lit8 v0, v0, 0x1

    .line 35
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 37
    return v0
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "policy-definition-entry"

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 10
    iget-object v3, v2, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 12
    invoke-virtual {v3, p1}, Landroid/app/admin/PolicyKey;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 20
    iget-object v2, v2, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    .line 22
    if-eqz v1, :cond_0

    .line 24
    const-string/jumbo v1, "resolved-value-entry"

    .line 27
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    iget-object v3, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 32
    invoke-virtual {v3}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3, p1}, Lcom/android/server/devicepolicy/PolicySerializer;->saveToXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 39
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 44
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v1

    .line 52
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 64
    const-string v4, "admin-policy-entry"

    .line 66
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    iget-object v5, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 71
    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v5

    .line 75
    if-eqz v5, :cond_1

    .line 77
    const-string/jumbo v5, "policy-value-entry"

    .line 80
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    iget-object v6, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 85
    invoke-virtual {v6, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Landroid/app/admin/PolicyValue;

    .line 91
    invoke-virtual {v6}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v2, v6, p1}, Lcom/android/server/devicepolicy/PolicySerializer;->saveToXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 98
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    :cond_1
    const-string/jumbo v5, "enforcing-admin-entry"

    .line 104
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 110
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "\nPolicyKey - "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 10
    iget-object v2, v1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "\nmPolicyDefinition= \n\t"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "\nmPoliciesSetByAdmins= \n\t"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ",\nmCurrentResolvedPolicy= \n\t"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string p0, " }"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
