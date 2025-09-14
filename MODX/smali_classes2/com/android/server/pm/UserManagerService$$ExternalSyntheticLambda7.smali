.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic f$1:Landroid/accounts/Account;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;->f$1:Landroid/accounts/Account;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;->f$1:Landroid/accounts/Account;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3, v1}, Landroid/accounts/AccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v2, p0}, Lcom/android/server/pm/UserManagerService;->someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 31
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
