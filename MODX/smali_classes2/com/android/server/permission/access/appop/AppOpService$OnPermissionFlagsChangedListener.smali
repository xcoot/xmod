.class public final Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;
.implements Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;


# instance fields
.field public final pendingChanges:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/permission/access/appop/AppOpService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/AppOpService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p5, p6}, Lcom/android/server/permission/access/appop/AppOpService;->evaluateModeFromPermissionFlags(II)I

    .line 7
    .line 8
    .line 9
    move-result p5

    .line 10
    invoke-static {p7, p8}, Lcom/android/server/permission/access/appop/AppOpService;->evaluateModeFromPermissionFlags(II)I

    .line 11
    .line 12
    .line 13
    move-result p6

    .line 14
    if-eq p5, p6, :cond_0

    .line 15
    .line 16
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .line 21
    .line 22
    new-instance p2, Lcom/android/server/permission/jarjar/kotlin/Triple;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-direct {p2, p1, p3, p4}, Lcom/android/server/permission/jarjar/kotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final onDevicePermissionFlagsChanged(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 18

    .line 1
    move/from16 v9, p1

    .line 2
    .line 3
    move/from16 v10, p2

    .line 4
    .line 5
    move-object/from16 v11, p5

    .line 6
    .line 7
    move-object/from16 v12, p0

    .line 8
    .line 9
    iget-object v13, v12, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 10
    .line 11
    iget-object v0, v13, Lcom/android/server/permission/access/appop/AppOpService;->backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v14, v0

    .line 18
    check-cast v14, Landroid/util/ArraySet;

    .line 19
    .line 20
    const-string/jumbo v15, "state"

    .line 21
    .line 22
    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    if-eqz v14, :cond_2

    .line 26
    .line 27
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    .line 28
    .line 29
    .line 30
    move-result v11

    .line 31
    const/4 v0, 0x0

    .line 32
    move v8, v0

    .line 33
    :goto_0
    if-ge v8, v11, :cond_5

    .line 34
    .line 35
    invoke-virtual {v14, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, v13, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Integer;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v2, v13, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 52
    .line 53
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    iget-object v3, v13, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v9, v10, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    move-object/from16 v0, p0

    .line 73
    .line 74
    move/from16 v1, p1

    .line 75
    .line 76
    move/from16 v2, p2

    .line 77
    .line 78
    move-object/from16 v3, p4

    .line 79
    .line 80
    move v5, v7

    .line 81
    move/from16 v6, p3

    .line 82
    .line 83
    move/from16 v17, v8

    .line 84
    .line 85
    move/from16 v8, p6

    .line 86
    .line 87
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_0
    invoke-static {v15}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v16

    .line 95
    :cond_1
    move/from16 v17, v8

    .line 96
    .line 97
    :goto_1
    add-int/lit8 v8, v17, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, v13, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    iget-object v1, v13, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    .line 111
    .line 112
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Ljava/lang/Integer;

    .line 117
    .line 118
    if-eqz v1, :cond_4

    .line 119
    .line 120
    iget-object v2, v13, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 121
    .line 122
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-eqz v2, :cond_3

    .line 127
    .line 128
    iget-object v3, v13, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {v2, v9, v10, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    move-object/from16 v0, p0

    .line 142
    .line 143
    move/from16 v1, p1

    .line 144
    .line 145
    move/from16 v2, p2

    .line 146
    .line 147
    move-object/from16 v3, p4

    .line 148
    .line 149
    move/from16 v5, p3

    .line 150
    .line 151
    move v6, v8

    .line 152
    move/from16 v7, p6

    .line 153
    .line 154
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    .line 155
    .line 156
    .line 157
    sget-object v16, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    invoke-static {v15}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v16

    .line 164
    :cond_4
    :goto_2
    if-nez v16, :cond_5

    .line 165
    .line 166
    iget-object v0, v13, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    .line 167
    .line 168
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Ljava/lang/Integer;

    .line 173
    .line 174
    if-eqz v0, :cond_5

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    const/16 v6, 0x10

    .line 181
    .line 182
    const/16 v8, 0x10

    .line 183
    .line 184
    move-object/from16 v0, p0

    .line 185
    .line 186
    move/from16 v1, p1

    .line 187
    .line 188
    move/from16 v2, p2

    .line 189
    .line 190
    move-object/from16 v3, p4

    .line 191
    .line 192
    move/from16 v5, p3

    .line 193
    .line 194
    move/from16 v7, p6

    .line 195
    .line 196
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    .line 197
    .line 198
    .line 199
    :cond_5
    return-void
.end method

.method public final onPermissionFlagsChanged(IIIILjava/lang/String;)V
    .locals 7

    .line 1
    const-string v4, "default:0"

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move-object v5, p5

    .line 8
    move v6, p4

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onStateMutated()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    check-cast v5, Lcom/android/server/permission/jarjar/kotlin/Triple;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    move v7, v3

    .line 35
    :goto_1
    if-ge v7, v6, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    check-cast v8, Lcom/android/server/appop/AppOpsService$2;

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    check-cast v9, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    check-cast v10, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getThird()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    check-cast v11, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    invoke-virtual {v8, v9, v11, v10}, Lcom/android/server/appop/AppOpsService$2;->onUidModeChanged(IILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v7, v7, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 81
    .line 82
    .line 83
    return-void
.end method
