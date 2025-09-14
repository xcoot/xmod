.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;->f$1:[I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;->f$3:Z

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 4
    .line 5
    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;->f$1:[I

    .line 6
    .line 7
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;->f$3:Z

    .line 10
    .line 11
    iget v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;->f$4:I

    .line 12
    .line 13
    move-object/from16 v0, p1

    .line 14
    .line 15
    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 16
    .line 17
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v14

    .line 24
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 25
    .line 26
    .line 27
    move-result v15

    .line 28
    const/16 v0, 0x2710

    .line 29
    .line 30
    if-ge v15, v0, :cond_0

    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_0
    array-length v8, v10

    .line 35
    const/4 v0, 0x0

    .line 36
    move v7, v0

    .line 37
    :goto_0
    if-ge v7, v8, :cond_3

    .line 38
    .line 39
    aget v6, v10, v7

    .line 40
    .line 41
    const-string v0, "default:0"

    .line 42
    .line 43
    invoke-virtual {v9, v14, v11, v0, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v9, v14, v11, v0, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    const v1, 0x8034

    .line 54
    .line 55
    .line 56
    and-int/2addr v0, v1

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    invoke-static {v6, v15}, Landroid/os/UserHandle;->getUid(II)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const v1, 0x534e4554

    .line 64
    .line 65
    .line 66
    const-string v2, " due to definition change"

    .line 67
    .line 68
    const-string v3, " from package "

    .line 69
    .line 70
    const-string v4, "Revoking permission "

    .line 71
    .line 72
    if-eqz v12, :cond_1

    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v4, v11, v3, v14, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    move/from16 p0, v7

    .line 83
    .line 84
    const-string v7, "195338390"

    .line 85
    .line 86
    filled-new-array {v7, v0, v5}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    move/from16 p1, v8

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move/from16 p0, v7

    .line 97
    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {v4, v11, v3, v14, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    move/from16 p1, v8

    .line 107
    .line 108
    const-string v8, "154505240"

    .line 109
    .line 110
    filled-new-array {v8, v5, v7}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-static {v1, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v4, v11, v3, v14, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    const-string v7, "168319670"

    .line 126
    .line 127
    filled-new-array {v7, v0, v5}, [Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 132
    .line 133
    .line 134
    :goto_1
    invoke-static {v4, v11, v3, v14, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v8, "PermissionManager"

    .line 139
    .line 140
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :try_start_0
    iget-object v7, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    .line 145
    const/4 v4, 0x0

    .line 146
    const/4 v3, 0x0

    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    move-object v0, v9

    .line 150
    move-object v1, v14

    .line 151
    move-object v2, v11

    .line 152
    move v5, v13

    .line 153
    move/from16 v17, p0

    .line 154
    .line 155
    move-object/from16 v18, v7

    .line 156
    .line 157
    move-object/from16 v7, v16

    .line 158
    .line 159
    move/from16 v16, p1

    .line 160
    .line 161
    move-object/from16 v19, v9

    .line 162
    .line 163
    move-object v9, v8

    .line 164
    move-object/from16 v8, v18

    .line 165
    .line 166
    :try_start_1
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :catch_0
    move-exception v0

    .line 171
    goto :goto_2

    .line 172
    :catch_1
    move-exception v0

    .line 173
    move/from16 v17, p0

    .line 174
    .line 175
    move/from16 v16, p1

    .line 176
    .line 177
    move-object/from16 v19, v9

    .line 178
    .line 179
    move-object v9, v8

    .line 180
    :goto_2
    const-string v1, "Could not revoke "

    .line 181
    .line 182
    const-string v2, " from "

    .line 183
    .line 184
    invoke-static {v1, v11, v2, v14}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_2
    move/from16 v17, v7

    .line 193
    .line 194
    move/from16 v16, v8

    .line 195
    .line 196
    move-object/from16 v19, v9

    .line 197
    .line 198
    :goto_3
    add-int/lit8 v7, v17, 0x1

    .line 199
    .line 200
    move/from16 v8, v16

    .line 201
    .line 202
    move-object/from16 v9, v19

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_3
    :goto_4
    return-void
.end method
