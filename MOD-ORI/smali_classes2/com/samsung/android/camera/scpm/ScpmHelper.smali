.class public final Lcom/samsung/android/camera/scpm/ScpmHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final APP_VERSION:Ljava/lang/String;

.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

.field public mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "eng"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string/jumbo v1, "userdebug"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    sput-boolean v0, Lcom/samsung/android/camera/scpm/ScpmHelper;->DEBUG:Z

    .line 25
    .line 26
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 27
    .line 28
    sput-object v0, Lcom/samsung/android/camera/scpm/ScpmHelper;->APP_VERSION:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/camera/scpm/ScpmReceiver$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/camera/scpm/ScpmHelper;->mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

    .line 7
    .line 8
    return-void
.end method
