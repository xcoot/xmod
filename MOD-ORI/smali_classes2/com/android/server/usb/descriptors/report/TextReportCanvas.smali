.class public final Lcom/android/server/usb/descriptors/report/TextReportCanvas;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mListIndent:I

.field public final mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

.field public final mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    return-void
.end method

.method public static getBCDString(I)Ljava/lang/String;
    .locals 4

    .line 1
    shr-int/lit8 v0, p0, 0x8

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xf

    .line 4
    .line 5
    shr-int/lit8 v1, p0, 0x4

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0xf

    .line 8
    .line 9
    and-int/lit8 p0, p0, 0xf

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, ""

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, "."

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static getHexString(B)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHexString(I)Ljava/lang/String;
    .locals 2

    const v0, 0xffff

    and-int/2addr p0, v0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final closeList()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    .line 6
    .line 7
    return-void
.end method

.method public final closeListItem()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "\n"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final openList()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    .line 6
    .line 7
    return-void
.end method

.method public final openListItem()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListIndent()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v0, "- "

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final writeHeader(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListIndent()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "]\n"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final writeListIndent()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, " "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public final writeListItem(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openListItem()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeListItem()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final writeParagraph(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListIndent()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "*"

    .line 11
    .line 12
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :goto_0
    const-string p1, "\n"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    return-void
.end method
