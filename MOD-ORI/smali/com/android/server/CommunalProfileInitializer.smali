.class public final Lcom/android/server/CommunalProfileInitializer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUmi:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/CommunalProfileInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 13
    .line 14
    return-void
.end method

.method public static removeCommunalProfileIfPresent()V
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getCommunalProfileId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, -0x2710

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "CommunalProfileInitializer"

    .line 27
    .line 28
    const-string v4, "Removing existing Communal Profile, userId=%d"

    .line 29
    .line 30
    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->removeUserEvenWhenDisallowed(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "Failed to remove Communal Profile, userId=%d"

    .line 48
    .line 49
    invoke-static {v3, v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public final init(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 8

    .line 1
    const-string v0, "CommunalProfileInitializer"

    .line 2
    .line 3
    const-string/jumbo v1, "init())"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "createCommunalProfileIfNeeded"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/CommunalProfileInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getCommunalProfileId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, -0x2710

    .line 22
    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v1, "Found existing Communal Profile, userId=%d"

    .line 34
    .line 35
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v1, "Creating a new Communal Profile"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/android/server/CommunalProfileInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 45
    .line 46
    const-string v4, "android.os.usertype.profile.COMMUNAL"

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserManagerInternal;->createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v1, "Successfully created Communal Profile, userId=%d"

    .line 57
    .line 58
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 59
    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    const-string v1, "Communal Profile creation failed"

    .line 74
    .line 75
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 79
    .line 80
    .line 81
    return-void
.end method
