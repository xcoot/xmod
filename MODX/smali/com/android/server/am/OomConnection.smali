.class public final Lcom/android/server/am/OomConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mOomListener:Lcom/android/server/am/ProcessList$1;


# direct methods
.method public static bridge synthetic -$$Nest$smwaitOom()[Landroid/os/OomKillRecord;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/am/OomConnection;->waitOom()[Landroid/os/OomKillRecord;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessList$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/OomConnection;->mOomListener:Lcom/android/server/am/ProcessList$1;

    .line 6
    new-instance p1, Lcom/android/server/am/OomConnection$OomConnectionThread;

    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/am/OomConnection$OomConnectionThread;-><init>(Lcom/android/server/am/OomConnection;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 14
    return-void
.end method

.method private static native waitOom()[Landroid/os/OomKillRecord;
.end method
