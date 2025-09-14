.class public final Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;
.super Lcom/android/server/infra/ServiceNameBaseResolver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mArrayResourceId:I

.field public final mStringResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/android/server/infra/ServiceNameBaseResolver;-><init>(Landroid/content/Context;Z)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    const p1, 0x10700c1

    .line 6
    iput p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mArrayResourceId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/server/infra/ServiceNameBaseResolver;-><init>(Landroid/content/Context;Z)V

    .line 2
    iput p2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mArrayResourceId:I

    return-void
.end method


# virtual methods
.method public final dumpShort(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "FrameworkResourcesServiceNamer: resId="

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 12
    .line 13
    .line 14
    const-string v1, ", numberTemps="

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 26
    .line 27
    .line 28
    const-string v1, ", enabledDefaults="

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final readServiceName(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final readServiceNameList(I)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mArrayResourceId:I

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
