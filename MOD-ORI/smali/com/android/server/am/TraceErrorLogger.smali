.class public final Lcom/android/server/am/TraceErrorLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V
    .locals 3

    .line 1
    const-string v0, "ErrorId:"

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    const-string v2, "#"

    .line 6
    .line 7
    invoke-static {p1, v0, p0, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x1

    .line 23
    const-wide/16 v0, 0x40

    .line 24
    .line 25
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "Subject(for ErrorId "

    .line 6
    .line 7
    const-string v1, "):"

    .line 8
    .line 9
    invoke-static {v0, p1, v1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x1

    .line 14
    const-wide/16 v0, 0x40

    .line 15
    .line 16
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
