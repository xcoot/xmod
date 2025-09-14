.class public final Lcom/android/server/content/SyncStorageEngine$EndPoint;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final provider:Ljava/lang/String;

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 8
    sput-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 6
    iput-object p2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 10
    return-void
.end method


# virtual methods
.method public final matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 6
    if-eq v2, v0, :cond_0

    .line 8
    const/4 v3, -0x1

    .line 9
    if-eq v2, v3, :cond_0

    .line 11
    if-eq v0, v3, :cond_0

    .line 13
    return v1

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_1

    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 23
    invoke-virtual {v3, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    :goto_0
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 29
    if-nez p1, :cond_2

    .line 31
    move p0, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 39
    :goto_1
    if-eqz v0, :cond_3

    .line 41
    if-eqz p0, :cond_3

    .line 43
    move v1, v2

    .line 44
    :cond_3
    return v1
.end method

.method public final toSafeString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 8
    if-nez v1, :cond_0

    .line 10
    const-string v1, "ALL ACCS"

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "/"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 27
    if-nez v1, :cond_1

    .line 29
    const-string v1, "ALL PDRS"

    .line 31
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    const-string v2, ":u"

    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget p0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 8
    if-nez v1, :cond_0

    .line 10
    const-string v1, "ALL ACCS"

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "/"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 25
    if-nez v1, :cond_1

    .line 27
    const-string v1, "ALL PDRS"

    .line 29
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    const-string v2, ":u"

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget p0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
