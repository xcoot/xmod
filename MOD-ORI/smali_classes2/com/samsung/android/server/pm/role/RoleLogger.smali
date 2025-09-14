.class public final Lcom/samsung/android/server/pm/role/RoleLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LOGGING_PERIOD:J

.field public static final ROLES_TO_LOG:[Ljava/lang/String;

.field public static final sRoleLoggingServiceName:Landroid/content/ComponentName;


# direct methods
.method public static -$$Nest$mgetEachRoleHolder(Lcom/samsung/android/server/pm/role/RoleLogger;Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    .line 1
    const-class p0, Landroid/app/role/RoleManager;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/role/RoleManager;

    .line 8
    .line 9
    new-instance p1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    array-length v0, p2

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v2, v0, :cond_2

    .line 18
    .line 19
    aget-object v3, p2, v2

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    const-string v4, "Unavailable"

    .line 28
    .line 29
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    invoke-virtual {p0, v3}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    const-string v4, "None"

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/String;

    .line 51
    .line 52
    :goto_1
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x7

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/samsung/android/server/pm/role/RoleLogger;->LOGGING_PERIOD:J

    .line 10
    .line 11
    new-instance v0, Landroid/content/ComponentName;

    .line 12
    .line 13
    const-class v1, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "android"

    .line 20
    .line 21
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/samsung/android/server/pm/role/RoleLogger;->sRoleLoggingServiceName:Landroid/content/ComponentName;

    .line 25
    .line 26
    const-string v13, "android.app.role.SYSTEM_CONTACTS"

    .line 27
    .line 28
    const-string v14, "android.app.role.SYSTEM_DOCUMENT_MANAGER"

    .line 29
    .line 30
    const-string v3, "android.app.role.BROWSER"

    .line 31
    .line 32
    const-string v4, "android.app.role.CALL_SCREENING"

    .line 33
    .line 34
    const-string v5, "android.app.role.ASSISTANT"

    .line 35
    .line 36
    const-string v6, "android.app.role.HOME"

    .line 37
    .line 38
    const-string v7, "android.app.role.DIALER"

    .line 39
    .line 40
    const-string v8, "android.app.role.SMS"

    .line 41
    .line 42
    const-string v9, "android.app.role.CALL_REDIRECTION"

    .line 43
    .line 44
    const-string v10, "android.app.role.EMERGENCY"

    .line 45
    .line 46
    const-string v11, "android.app.role.NOTES"

    .line 47
    .line 48
    const-string v12, "android.app.role.SYSTEM_GALLERY"

    .line 49
    .line 50
    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/samsung/android/server/pm/role/RoleLogger;->ROLES_TO_LOG:[Ljava/lang/String;

    .line 55
    .line 56
    return-void
.end method
