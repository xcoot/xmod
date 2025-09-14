.class public abstract Lcom/android/server/display/DisplayAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/display/DisplayAdapter$Listener;

.field public final mName:Ljava/lang/String;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final sendTraversalRequestLocked()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayAdapter;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
