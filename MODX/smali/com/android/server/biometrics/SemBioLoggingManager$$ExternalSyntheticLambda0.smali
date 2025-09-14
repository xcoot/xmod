.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 6
    const-string/jumbo p1, "client"

    .line 9
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$2:I

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 5
    iget p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 12
    invoke-direct {v2}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>()V

    .line 15
    const-string v3, "R"

    .line 17
    iput-object v3, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    move-result-wide v3

    .line 23
    iput-wide v3, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 25
    iput-wide v3, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 27
    iput-object v1, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 29
    iput p0, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 34
    return-void
.end method
