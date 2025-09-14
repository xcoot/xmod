.class public final Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;
.super Landroid/media/midi/MidiReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mReceiver:Landroid/media/midi/MidiReceiver;


# virtual methods
.method public final onFlush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->flush()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onSend([BIIJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move-wide v4, p4

    .line 9
    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
