.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BroadcastHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:[I

.field public final synthetic f$4:[I

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/BroadcastHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$3:[I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$4:[I

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$5:Z

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$6:I

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$7:Landroid/util/SparseArray;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v12, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/BroadcastHelper;

    .line 4
    .line 5
    iget-object v13, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iget v1, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$2:I

    .line 8
    .line 9
    iget-object v14, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$3:[I

    .line 10
    .line 11
    iget-object v15, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$4:[I

    .line 12
    .line 13
    iget-boolean v2, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$5:Z

    .line 14
    .line 15
    iget v3, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$6:I

    .line 16
    .line 17
    iget-object v11, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;->f$7:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v10, Landroid/os/Bundle;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {v10, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    aget v4, v15, v5

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    aget v4, v14, v5

    .line 39
    .line 40
    :goto_0
    invoke-static {v4, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const-string v4, "android.intent.extra.UID"

    .line 45
    .line 46
    invoke-virtual {v10, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    const-string v1, "android.intent.extra.ARCHIVAL"

    .line 52
    .line 53
    invoke-virtual {v10, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const-string v0, "android.content.pm.extra.DATA_LOADER_TYPE"

    .line 57
    .line 58
    invoke-virtual {v10, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    const/16 v16, 0x0

    .line 62
    .line 63
    const/16 v17, 0x0

    .line 64
    .line 65
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    move-object v0, v12

    .line 71
    move-object v2, v13

    .line 72
    move-object v3, v10

    .line 73
    move-object v7, v14

    .line 74
    move-object v8, v15

    .line 75
    move-object v9, v11

    .line 76
    move-object/from16 v18, v10

    .line 77
    .line 78
    move-object/from16 v10, v16

    .line 79
    .line 80
    move-object/from16 v16, v11

    .line 81
    .line 82
    move-object/from16 v11, v17

    .line 83
    .line 84
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v12, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/android/server/pm/BroadcastHelper;->isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iget-object v0, v12, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    move-object v0, v12

    .line 112
    move-object v2, v13

    .line 113
    move-object/from16 v3, v18

    .line 114
    .line 115
    move-object v7, v14

    .line 116
    move-object v8, v15

    .line 117
    move-object/from16 v9, v16

    .line 118
    .line 119
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    return-void
.end method
