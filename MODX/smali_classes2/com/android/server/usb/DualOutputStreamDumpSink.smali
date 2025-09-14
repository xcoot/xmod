.class public final Lcom/android/server/usb/DualOutputStreamDumpSink;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDumpOutputStream:Lcom/android/internal/util/dump/DualDumpOutputStream;

.field public final mId:J


# direct methods
.method public constructor <init>(Lcom/android/internal/util/dump/DualDumpOutputStream;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usb/DualOutputStreamDumpSink;->mDumpOutputStream:Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/usb/DualOutputStreamDumpSink;->mId:J

    .line 7
    .line 8
    return-void
.end method
