.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/ProcessList;

    .line 6
    return-void
.end method


# virtual methods
.method public final onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/ProcessList;

    .line 3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    .line 5
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    .line 7
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    .line 10
    const/4 v2, 0x1

    .line 11
    and-int/2addr p2, v2

    .line 12
    if-eqz p2, :cond_0

    .line 14
    :try_start_0
    array-length p2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {p1, v1, v3, p2}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 19
    move-result p1

    .line 20
    if-lez p1, :cond_0

    .line 22
    array-length p2, v0

    .line 23
    invoke-static {v1, p1, v0}, Lcom/android/internal/os/Zygote;->nativeParseSigChld([BI[I)I

    .line 26
    move-result p1

    .line 27
    if-ne p2, p1, :cond_0

    .line 29
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 31
    aget p1, v0, v3

    .line 33
    aget p2, v0, v2

    .line 35
    const/4 v1, 0x2

    .line 36
    aget v0, v0, v1

    .line 38
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v0

    .line 44
    const/16 v1, 0x1006

    .line 46
    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    const-string p1, "Exception in reading unsolicited zygote message: "

    .line 57
    const-string p2, "ActivityManager"

    .line 59
    invoke-static {p0, p1, p2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return v2
.end method
