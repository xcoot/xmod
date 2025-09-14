.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Z

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I[ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;->f$2:[Z

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;->f$2:[Z

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 12
    .line 13
    const-string v4, "Missing permissions state for "

    .line 14
    .line 15
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 16
    .line 17
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 18
    .line 19
    monitor-enter v5

    .line 20
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-virtual {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    const-string p0, "PermissionManager"

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " and user "

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    monitor-exit v5

    .line 60
    goto :goto_3

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_4

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 64
    aget-boolean v4, v2, v1

    .line 65
    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    :goto_0
    move v8, v1

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    iget-object v7, v6, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 71
    .line 72
    if-nez v7, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    add-int/lit8 v7, v7, -0x1

    .line 80
    .line 81
    move v8, v1

    .line 82
    :goto_1
    if-ltz v7, :cond_4

    .line 83
    .line 84
    iget-object v9, v6, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 85
    .line 86
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    check-cast v9, Lcom/android/server/pm/permission/PermissionState;

    .line 91
    .line 92
    invoke-virtual {v9, v3, p0}, Lcom/android/server/pm/permission/PermissionState;->updateFlags(II)Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-eqz v10, :cond_3

    .line 97
    .line 98
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionState;->isDefault()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_3

    .line 103
    .line 104
    iget-object v9, v6, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 105
    .line 106
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_3
    or-int/2addr v8, v10

    .line 110
    add-int/lit8 v7, v7, -0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    :goto_2
    or-int p0, v4, v8

    .line 114
    .line 115
    aput-boolean p0, v2, v1

    .line 116
    .line 117
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 119
    .line 120
    iget-object p0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 121
    .line 122
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 127
    .line 128
    .line 129
    :goto_3
    return-void

    .line 130
    :goto_4
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 132
    .line 133
    throw p0
.end method
