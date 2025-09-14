.class public abstract Lcom/android/server/input/UEventManager$UEventListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/input/UEventManager$UEventListener$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/input/UEventManager$UEventListener$1;-><init>(Lcom/android/server/input/UEventManager$UEventListener;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/input/UEventManager$UEventListener;->mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;

    .line 11
    return-void
.end method


# virtual methods
.method public abstract onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end method
