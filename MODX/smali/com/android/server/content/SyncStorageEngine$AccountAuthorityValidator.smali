.class public final Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAccountManager:Landroid/accounts/AccountManager;

.field public final mAccountsCache:Landroid/util/SparseArray;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mProvidersPerUserCache:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-class v0, Landroid/accounts/AccountManager;

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/accounts/AccountManager;

    .line 12
    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountManager:Landroid/accounts/AccountManager;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 20
    new-instance p1, Landroid/util/SparseArray;

    .line 22
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountsCache:Landroid/util/SparseArray;

    .line 27
    new-instance p1, Landroid/util/SparseArray;

    .line 29
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mProvidersPerUserCache:Landroid/util/SparseArray;

    .line 34
    return-void
.end method
