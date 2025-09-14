.class public final Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCopyBufferLength:I

.field public final mSink:Landroid/os/ParcelFileDescriptor;

.field public final mSource:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSource:Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSink:Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mCopyBufferLength:I

    .line 9
    .line 10
    return-void
.end method
