.class public final Lcom/android/server/security/AttestationVerificationManagerService$1;
.super Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/AttestationVerificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/AttestationVerificationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/security/Flags;->dumpAttestationVerifications()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p3, "AVF"

    .line 18
    .line 19
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 27
    .line 28
    const-string p3, "    "

    .line 29
    .line 30
    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p2, "AttestationVerificationManagerService"

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 42
    .line 43
    .line 44
    const-string p2, "Event Log:"

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    .line 55
    .line 56
    iget-object p2, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    .line 57
    .line 58
    monitor-enter p2

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->reversed()Ljava/util/Deque;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-eqz p3, :cond_2

    .line 74
    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    check-cast p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;

    .line 80
    .line 81
    const-string v0, "Verification #%d [%s]"

    .line 82
    .line 83
    iget v1, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mEventNumber:I

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-wide v2, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mEventTimeMs:J

    .line 90
    .line 91
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->dumpTo(Landroid/util/IndentingPrintWriter;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    throw p0
.end method

.method public final verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .locals 8

    .line 1
    const-string v0, "AVF"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android.permission.USE_ATTESTATION_VERIFICATION_SERVICE"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    const-string/jumbo v1, "verifyAttestation"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    .line 22
    .line 23
    move-object v3, p1

    .line 24
    move v4, p2

    .line 25
    move-object v5, p3

    .line 26
    move-object v6, p4

    .line 27
    move-object v7, p5

    .line 28
    invoke-static/range {v2 .. v7}, Lcom/android/server/security/AttestationVerificationManagerService;->-$$Nest$mverifyAttestationForAllVerifiers(Lcom/android/server/security/AttestationVerificationManagerService;Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    const-string p1, "failed to verify attestation"

    .line 34
    .line 35
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    const-class p1, Landroid/os/RemoteException;

    .line 39
    .line 40
    invoke-static {p0, p1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    throw p0
.end method

.method public final verifyToken(Landroid/security/attestationverification/VerificationToken;Landroid/os/ParcelDuration;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "android.permission.USE_ATTESTATION_VERIFICATION_SERVICE"

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
