.class public final synthetic Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic f$1:Landroid/accounts/Account;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/accounts/AccountManagerService$UserAccounts;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/accounts/AccountManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$1:Landroid/accounts/Account;

    .line 8
    iput p3, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$3:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$1:Landroid/accounts/Account;

    .line 5
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$2:I

    .line 7
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$3:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 13
    return-void
.end method
