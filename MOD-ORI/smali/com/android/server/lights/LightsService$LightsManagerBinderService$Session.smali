.class public final Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mPriority:I

.field public final mRequests:Landroid/util/SparseArray;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    .line 12
    .line 13
    iput p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    .line 2
    .line 3
    iget p1, p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    .line 6
    .line 7
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
