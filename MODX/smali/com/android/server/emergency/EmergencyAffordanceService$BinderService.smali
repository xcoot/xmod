.class public final Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 3
    iget-object p1, p1, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    .line 5
    const-string p3, "EmergencyAffordanceService"

    .line 7
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 16
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 18
    const-string p3, "  "

    .line 20
    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const-string p2, "EmergencyAffordanceService (dumpsys emergency_affordance) state:\n"

    .line 28
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo p3, "mEmergencyAffordanceNeeded="

    .line 36
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget-boolean p3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    .line 41
    const-string/jumbo v0, "mVoiceCapable="

    .line 44
    invoke-static {p2, p3, p1, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object p2

    .line 48
    iget-boolean p3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    .line 50
    const-string/jumbo v0, "mAnySimNeedsEmergencyAffordance="

    .line 53
    invoke-static {p2, p3, p1, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object p2

    .line 57
    iget-boolean p3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnySimNeedsEmergencyAffordance:Z

    .line 59
    const-string/jumbo v0, "mAnyNetworkNeedsEmergencyAffordance="

    .line 62
    invoke-static {p2, p3, p1, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move-result-object p2

    .line 66
    iget-boolean p3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnyNetworkNeedsEmergencyAffordance:Z

    .line 68
    const-string/jumbo v0, "mEmergencyCallCountryIsos="

    .line 71
    invoke-static {p2, p3, p1, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-result-object p2

    .line 75
    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    .line 77
    const-string p3, ","

    .line 79
    invoke-static {p3, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 93
    return-void
.end method
