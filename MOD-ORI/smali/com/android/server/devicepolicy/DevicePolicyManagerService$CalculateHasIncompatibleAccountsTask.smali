.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;
.super Landroid/os/AsyncTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FEATURE_ALLOW:[Ljava/lang/String;

.field public static final FEATURE_DISALLOW:[Ljava/lang/String;


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "android.account.DEVICE_OR_PROFILE_OWNER_ALLOWED"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_ALLOW:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "android.account.DEVICE_OR_PROFILE_OWNER_DISALLOWED"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_DISALLOW:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static hasAccountFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/accounts/AccountManager;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    const-wide/16 v0, 0x1e

    .line 9
    .line 10
    invoke-interface {p0, v0, v1, p1}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string p1, "DevicePolicyManager"

    .line 23
    .line 24
    const-string p2, "Failed to get account feature"

    .line 25
    .line 26
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    check-cast p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 34
    .line 35
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 44
    .line 45
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-class v4, Landroid/accounts/AccountManager;

    .line 57
    .line 58
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/accounts/AccountManager;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    array-length v6, v4

    .line 69
    move v7, v5

    .line 70
    :goto_1
    if-ge v7, v6, :cond_2

    .line 71
    .line 72
    aget-object v8, v4, v7

    .line 73
    .line 74
    sget-object v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_DISALLOW:[Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v2, v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->hasAccountFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_0

    .line 81
    .line 82
    :goto_2
    move v5, v0

    .line 83
    goto :goto_3

    .line 84
    :cond_0
    sget-object v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_ALLOW:[Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v2, v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->hasAccountFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-nez v8, :cond_1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    return-object v1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasIncompatibleAccounts:Ljava/util/Map;

    .line 10
    .line 11
    const-string p0, "DevicePolicyManager"

    .line 12
    .line 13
    const-string p1, "Finished calculating hasIncompatibleAccountsTask"

    .line 14
    .line 15
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method
