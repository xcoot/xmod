.class public final Lcom/android/server/midi/MidiService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/midi/MidiService$1;->this$0:Lcom/android/server/midi/MidiService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/midi/MidiService$1;->this$0:Lcom/android/server/midi/MidiService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p2, p1, p0}, Lcom/android/server/midi/MidiService;->-$$Nest$maddPackageDeviceServers(Lcom/android/server/midi/MidiService;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/midi/MidiService$1;->this$0:Lcom/android/server/midi/MidiService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, p1, v1}, Lcom/android/server/midi/MidiService;->-$$Nest$mremovePackageDeviceServers(Lcom/android/server/midi/MidiService;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/midi/MidiService$1;->this$0:Lcom/android/server/midi/MidiService;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {v0, p1, p0}, Lcom/android/server/midi/MidiService;->-$$Nest$maddPackageDeviceServers(Lcom/android/server/midi/MidiService;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/midi/MidiService$1;->this$0:Lcom/android/server/midi/MidiService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p2, p1, p0}, Lcom/android/server/midi/MidiService;->-$$Nest$mremovePackageDeviceServers(Lcom/android/server/midi/MidiService;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
