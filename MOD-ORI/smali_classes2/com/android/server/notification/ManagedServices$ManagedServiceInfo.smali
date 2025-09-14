.class public final Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final connection:Landroid/content/ServiceConnection;

.field public final isSystem:Z

.field public isSystemUi:Z

.field public final mKey:Landroid/util/Pair;

.field public final service:Landroid/os/IInterface;

.field public final targetSdkVersion:I

.field public final synthetic this$0:Lcom/android/server/notification/ManagedServices;

.field public final uid:I

.field public final userid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 17
    .line 18
    iput p8, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 19
    .line 20
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->mKey:Landroid/util/Pair;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "binderDied"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/ManagedServices;)V
    .locals 5

    .line 1
    const-wide v0, 0x20b00000004L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 11
    .line 12
    const-wide v3, 0x10b00000001L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 18
    .line 19
    .line 20
    const-wide v2, 0x10500000002L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iget v4, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 26
    .line 27
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-wide v3, 0x10900000003L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-wide v2, 0x10800000004L

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    iget-boolean v4, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 54
    .line 55
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 59
    .line 60
    if-eq p0, p2, :cond_0

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 p0, 0x0

    .line 65
    :goto_0
    const-wide v2, 0x10800000005L

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final enabledAndUserMatches(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    return v3

    .line 16
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 17
    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    return v3

    .line 21
    :cond_2
    if-eq p1, v2, :cond_6

    .line 22
    .line 23
    if-ne p1, v0, :cond_3

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_3
    iget v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 27
    .line 28
    const/16 v2, 0x15

    .line 29
    .line 30
    if-lt v0, v2, :cond_5

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 43
    .line 44
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v2, v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isProfileUser(Landroid/content/Context;I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    move p0, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-string v2, "device_policy"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 67
    .line 68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 69
    .line 70
    .line 71
    move-result-wide v4

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0, p0, p1}, Landroid/app/admin/DevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    .line 79
    .line 80
    .line 81
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    :goto_0
    if-eqz p0, :cond_5

    .line 86
    .line 87
    move v1, v3

    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_5
    :goto_1
    return v1

    .line 95
    :cond_6
    :goto_2
    return v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 18
    .line 19
    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 20
    .line 21
    iget v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 26
    .line 27
    iget-boolean v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 32
    .line 33
    iget v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 38
    .line 39
    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 40
    .line 41
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 48
    .line 49
    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 60
    .line 61
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 70
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final isEnabledForCurrentProfiles()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    monitor-exit v0

    .line 29
    return p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final isSameUser(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 13
    .line 14
    if-ne p1, p0, :cond_2

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x1

    .line 17
    :cond_2
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ManagedServiceInfo[component="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",userid="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",isSystem="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",targetSdkVersion="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",connection="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v1, "<connection>"

    .line 55
    .line 56
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ",service="

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/16 p0, 0x5d

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method
