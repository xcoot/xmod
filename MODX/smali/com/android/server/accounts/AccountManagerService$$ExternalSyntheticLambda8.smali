.class public final synthetic Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/accounts/AccountManagerService;

    .line 6
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda8;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda8;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda8;->f$1:I

    .line 5
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda8;->f$2:I

    .line 7
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 23
    const-string/jumbo v1, "device_policy"

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 32
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 38
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    array-length v1, v0

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    if-ge v2, v1, :cond_3

    .line 45
    aget-object v3, v0, v2

    .line 47
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 53
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    :goto_1
    return-object p0
.end method
