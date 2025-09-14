.class public abstract Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public callbackCompleted:Z

.field public final mTimeoutRunnable:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;

.field public final mToken:I

.field public final mUserId:I

.field public final overlayLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->overlayLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    .line 13
    .line 14
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;-><init>(Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mTimeoutRunnable:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;

    .line 20
    .line 21
    iput p1, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mToken:I

    .line 22
    .line 23
    iput p2, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mUserId:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract onChangeCompleted(I)V
.end method
