.class public final Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;
.super Lcom/android/server/usb/descriptors/UsbACTerminal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mSourceID:B


# virtual methods
.method public final parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACTerminal;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;->mSourceID:B

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 11
    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 14
    .line 15
    return p0
.end method

.method public final report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACTerminal;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openList()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "Source ID: "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;->mSourceID:B

    .line 15
    .line 16
    invoke-static {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(B)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeList()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
