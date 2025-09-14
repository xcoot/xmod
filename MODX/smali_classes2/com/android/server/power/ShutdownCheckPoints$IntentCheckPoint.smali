.class public final Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;
.super Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIntentName:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p5}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;-><init>(JLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;->mIntentName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;->mPackageName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dumpDetails(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    const-string p1, "Intent: "

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;->mIntentName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "Package: "

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;->mPackageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final getOrigin()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "INTENT"

    .line 2
    .line 3
    return-object p0
.end method
