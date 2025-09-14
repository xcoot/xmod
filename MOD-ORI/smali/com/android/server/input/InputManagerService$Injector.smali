.class Lcom/android/server/input/InputManagerService$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLooper:Landroid/os/Looper;

.field public final mUEventManager:Lcom/android/server/input/UEventManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/InputManagerService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$Injector;->mUEventManager:Lcom/android/server/input/UEventManager;

    .line 9
    .line 10
    return-void
.end method
