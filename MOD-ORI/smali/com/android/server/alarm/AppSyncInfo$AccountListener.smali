.class public final Lcom/android/server/alarm/AppSyncInfo$AccountListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AppSyncInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AppSyncInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v0, "account"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/accounts/AccountManager;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/alarm/AppSyncInfo;->mAccountsPackages:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    array-length v0, p1

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-ge v1, v0, :cond_2

    .line 30
    .line 31
    aget-object v2, p1, v1

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/android/server/alarm/AppSyncInfo;->mAccountsPackages:Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v4, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x1

    .line 44
    if-eq v3, v4, :cond_1

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/android/server/alarm/AppSyncInfo;->mAccountsPackages:Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountsPackages:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/String;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v1, "<AccPackages> "

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v0, "AppSyncInfo"

    .line 93
    .line 94
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    :goto_2
    return-void
.end method
