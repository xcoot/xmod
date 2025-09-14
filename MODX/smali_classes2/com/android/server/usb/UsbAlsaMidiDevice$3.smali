.class public final Lcom/android/server/usb/UsbAlsaMidiDevice$3;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

.field public final synthetic val$outputStreamF:Ljava/io/FileOutputStream;

.field public final synthetic val$portF:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    .line 4
    .line 5
    iput p4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$portF:I

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/midi/MidiEventScheduler;->waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    const-string v1, "UsbAlsaMidiDevice"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "output thread exit"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    .line 21
    .line 22
    iget-object v3, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    .line 23
    .line 24
    iget v4, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v3, "write failed for port "

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$portF:I

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0
.end method
