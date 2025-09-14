.class public final Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

.field public final synthetic val$newState:Lcom/samsung/android/knox/SemPersonaState;

.field public final synthetic val$oldState:Lcom/samsung/android/knox/SemPersonaState;

.field public final synthetic val$personaId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "PersonaObserver.onStateChange() inside handler state: "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " old state: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "KnoxMUMContainerPolicy"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    .line 40
    iget v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    .line 51
    .line 52
    const/16 v2, 0x5f

    .line 53
    .line 54
    const/16 v3, 0x5b

    .line 55
    .line 56
    const/16 v4, 0x5d

    .line 57
    .line 58
    const/16 v5, 0x5e

    .line 59
    .line 60
    const/4 v6, -0x1

    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    :goto_0
    move v8, v6

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    aget v1, v8, v1

    .line 72
    .line 73
    packed-switch v1, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_0
    move v8, v5

    .line 78
    goto :goto_1

    .line 79
    :pswitch_1
    move v8, v4

    .line 80
    goto :goto_1

    .line 81
    :pswitch_2
    move v8, v3

    .line 82
    goto :goto_1

    .line 83
    :pswitch_3
    move v8, v2

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    .line 85
    .line 86
    if-nez v1, :cond_1

    .line 87
    .line 88
    :goto_2
    move v9, v6

    .line 89
    goto :goto_3

    .line 90
    :cond_1
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    aget v1, v9, v1

    .line 97
    .line 98
    packed-switch v1, :pswitch_data_1

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :pswitch_4
    move v9, v5

    .line 103
    goto :goto_3

    .line 104
    :pswitch_5
    move v9, v4

    .line 105
    goto :goto_3

    .line 106
    :pswitch_6
    move v9, v3

    .line 107
    goto :goto_3

    .line 108
    :pswitch_7
    move v9, v2

    .line 109
    :goto_3
    const/4 v10, 0x0

    .line 110
    if-eq v9, v8, :cond_3

    .line 111
    .line 112
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    if-eqz v11, :cond_2

    .line 123
    .line 124
    array-length v12, v11

    .line 125
    move v13, v10

    .line 126
    :goto_4
    if-ge v13, v12, :cond_3

    .line 127
    .line 128
    aget-object v2, v11, v13

    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    .line 131
    .line 132
    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 133
    .line 134
    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    .line 135
    .line 136
    move v4, v7

    .line 137
    move v5, v8

    .line 138
    move v6, v9

    .line 139
    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendContainerStateChangeIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 140
    .line 141
    .line 142
    add-int/lit8 v13, v13, 0x1

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 148
    .line 149
    const/4 v2, 0x0

    .line 150
    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    .line 151
    .line 152
    move v4, v7

    .line 153
    move v5, v8

    .line 154
    move v6, v9

    .line 155
    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendContainerStateChangeIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 156
    .line 157
    .line 158
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    .line 159
    .line 160
    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_4

    .line 167
    .line 168
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    .line 169
    .line 170
    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_6

    .line 177
    .line 178
    :cond_4
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-eqz v0, :cond_5

    .line 189
    .line 190
    array-length v1, v0

    .line 191
    :goto_5
    if-ge v10, v1, :cond_6

    .line 192
    .line 193
    aget-object v2, v0, v10

    .line 194
    .line 195
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    .line 196
    .line 197
    iget-object v3, v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 198
    .line 199
    iget v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    .line 200
    .line 201
    invoke-static {v3, v2, v4, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendContainerAdminLockIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    .line 202
    .line 203
    .line 204
    add-int/lit8 v10, v10, 0x1

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    .line 208
    .line 209
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 210
    .line 211
    const/4 v1, 0x0

    .line 212
    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    .line 213
    .line 214
    invoke-static {v0, v1, p0, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendContainerAdminLockIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    .line 215
    .line 216
    .line 217
    :cond_6
    return-void

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
