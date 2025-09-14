.class public abstract Lcom/samsung/android/camera/scpm/ScpmList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConfigurationName:Ljava/lang/String;

.field public mItemNames:[Ljava/lang/String;

.field public final mPackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mVersion:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mConfigurationName:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mPackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mItemNames:[Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final setPackageList([[Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mPackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    iget-object v4, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mPackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    new-instance v5, Lcom/samsung/android/camera/scpm/PolicyListVO;

    .line 16
    .line 17
    aget-object v6, v3, v1

    .line 18
    .line 19
    const/4 v7, 0x1

    .line 20
    aget-object v7, v3, v7

    .line 21
    .line 22
    const/4 v8, 0x2

    .line 23
    aget-object v3, v3, v8

    .line 24
    .line 25
    invoke-direct {v5, v6, v7, v3}, Lcom/samsung/android/camera/scpm/PolicyListVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method
