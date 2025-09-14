.class public final synthetic Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accounts/AccountManagerService;

    .line 6
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3
    iget p0, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    .line 8
    move-result-object v1

    .line 9
    array-length v2, v1

    .line 10
    if-nez v2, :cond_0

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v3, p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    .line 23
    move-result-object v2

    .line 24
    array-length v4, v1

    .line 25
    const/4 v5, 0x0

    .line 26
    move v6, v5

    .line 27
    :goto_0
    if-ge v6, v4, :cond_2

    .line 29
    aget-object v7, v1, v6

    .line 31
    invoke-static {v2, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v8

    .line 35
    if-eqz v8, :cond_1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v0, v3, v7, v5, p0}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    .line 41
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_2
    return-void
.end method
