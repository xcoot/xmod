.class public abstract Lcom/android/server/storage/AppFuseBridge$MountScope;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public mMountResult:Z

.field public final mMounted:Ljava/util/concurrent/CountDownLatch;

.field public final mountId:I

.field public final uid:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    .line 14
    .line 15
    iput p1, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    .line 16
    .line 17
    iput p2, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public abstract open()Landroid/os/ParcelFileDescriptor;
.end method
