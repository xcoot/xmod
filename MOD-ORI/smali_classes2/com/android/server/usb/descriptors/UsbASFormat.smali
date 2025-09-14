.class public Lcom/android/server/usb/descriptors/UsbASFormat;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFormatType:B


# direct methods
.method public constructor <init>(IBBBI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 2
    .line 3
    .line 4
    iput-byte p4, p0, Lcom/android/server/usb/descriptors/UsbASFormat;->mFormatType:B

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACInterface;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sFormatNames:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbASFormat;->mFormatType:B

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Unknown Format Type 0x"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    const/4 p0, 0x0

    .line 33
    invoke-virtual {p1, v0, p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
