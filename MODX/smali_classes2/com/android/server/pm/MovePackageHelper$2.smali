.class public final Lcom/android/server/pm/MovePackageHelper$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/MovePackageHelper;

.field public final synthetic val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    .line 4
    .line 5
    iget-object v4, v1, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v5, v1, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->volumeUuid:Ljava/lang/String;

    .line 8
    .line 9
    iget v2, v1, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    .line 10
    .line 11
    iget v3, v1, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->callingUid:I

    .line 12
    .line 13
    iget-object v6, v1, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->user:Landroid/os/UserHandle;

    .line 14
    .line 15
    move v1, v2

    .line 16
    move v2, v3

    .line 17
    move-object v3, v6

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/MovePackageHelper;->movePackageInternal(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string v1, "PackageManager"

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "Failed to move "

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    .line 53
    .line 54
    iget v2, v2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    .line 55
    .line 56
    const/4 v3, -0x6

    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 58
    .line 59
    .line 60
    sget-object v1, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    sget-object v2, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-lez v4, :cond_0

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_3

    .line 78
    :cond_0
    :goto_0
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 79
    .line 80
    if-ne v0, v3, :cond_2

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_1

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    .line 97
    .line 98
    iget-object v3, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    .line 99
    .line 100
    iget-object v3, v3, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 101
    .line 102
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 103
    .line 104
    iget v2, v2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    .line 105
    .line 106
    const/4 v4, -0x1

    .line 107
    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    sget-object p0, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 114
    .line 115
    .line 116
    :cond_2
    monitor-exit v1

    .line 117
    :goto_2
    return-void

    .line 118
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    throw p0
.end method
