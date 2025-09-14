.class public final synthetic Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorShellCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorShellCommand;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorShellCommand;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorShellCommand;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroid/app/timedetector/ManualTimeSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timedetector/ManualTimeSuggestion;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_0
    invoke-static {p0}, Landroid/app/time/ExternalTimeSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/time/ExternalTimeSuggestion;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_1
    const-class v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    .line 22
    .line 23
    invoke-static {v0, p0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleParseCommandLineArg(Ljava/lang/Class;Landroid/os/ShellCommand;)Landroid/app/timedetector/TimeSuggestionHelper;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeSuggestion;-><init>(Landroid/app/timedetector/TimeSuggestionHelper;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_2
    invoke-static {p0}, Landroid/app/timedetector/TelephonyTimeSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_3
    invoke-static {p0}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
