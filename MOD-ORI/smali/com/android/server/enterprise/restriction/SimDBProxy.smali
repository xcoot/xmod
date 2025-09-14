.class public final Lcom/android/server/enterprise/restriction/SimDBProxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;


# instance fields
.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final addSimcard(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string v0, "SimTable"

    .line 4
    .line 5
    const-string v1, "SimIccId"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ne v2, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 v3, -0x1

    .line 16
    if-ne v2, v3, :cond_1

    .line 17
    .line 18
    new-instance v2, Landroid/content/ContentValues;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "adminUid"

    .line 24
    .line 25
    invoke-static {p1, v2, v3, v1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "SimPinCode"

    .line 29
    .line 30
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final getPincode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string v0, "SimIccId"

    .line 4
    .line 5
    const-string v1, "SimPinCode"

    .line 6
    .line 7
    const-string v2, "SimTable"

    .line 8
    .line 9
    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "SimDBProxy"

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "Could not find pincode for iccId "

    .line 22
    .line 23
    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "Successfully found pincode for iccId "

    .line 28
    .line 29
    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-object p0
.end method
