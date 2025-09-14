.class public final Lcom/android/server/incident/PendingReports$PendingReportRec;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final addedRealtime:J

.field public final addedWalltime:J

.field public final callingPackage:Ljava/lang/String;

.field public final flags:I

.field public final id:I

.field public final listener:Landroid/os/IIncidentAuthListener;

.field public final receiverClass:Ljava/lang/String;

.field public final reportId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/incident/PendingReports;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v0, p1, Lcom/android/server/incident/PendingReports;->mNextPendingId:I

    .line 6
    add-int/lit8 v1, v0, 0x1

    .line 8
    iput v1, p1, Lcom/android/server/incident/PendingReports;->mNextPendingId:I

    .line 10
    iput v0, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->id:I

    .line 12
    iput-object p2, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->callingPackage:Ljava/lang/String;

    .line 14
    iput p5, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->flags:I

    .line 16
    iput-object p6, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide p1

    .line 22
    iput-wide p1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedRealtime:J

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide p1

    .line 28
    iput-wide p1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedWalltime:J

    .line 30
    iput-object p3, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->receiverClass:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->reportId:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public final getUri()Landroid/net/Uri;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 6
    const-string/jumbo v1, "content"

    .line 9
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "android.os.IncidentManager"

    .line 15
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "/pending"

    .line 21
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->id:I

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string/jumbo v2, "id"

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    move-result-object v0

    .line 38
    const-string/jumbo v1, "pkg"

    .line 41
    iget-object v2, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->callingPackage:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    move-result-object v0

    .line 47
    iget v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->flags:I

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    const-string/jumbo v2, "flags"

    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    move-result-object v0

    .line 60
    iget-wide v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedWalltime:J

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    const-string/jumbo v2, "t"

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->receiverClass:Ljava/lang/String;

    .line 75
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 80
    move-result v2

    .line 81
    if-lez v2, :cond_0

    .line 83
    const-string/jumbo v2, "receiver"

    .line 86
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->reportId:Ljava/lang/String;

    .line 91
    if-eqz p0, :cond_1

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 96
    move-result v1

    .line 97
    if-lez v1, :cond_1

    .line 99
    const-string/jumbo v1, "r"

    .line 102
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 105
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method
