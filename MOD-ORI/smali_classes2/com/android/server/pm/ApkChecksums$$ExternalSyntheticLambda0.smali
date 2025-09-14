.class public final synthetic Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/pm/IOnChecksumsReadyListener;

.field public final synthetic f$4:Lcom/android/server/pm/ApkChecksums$Injector;

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;->f$3:Landroid/content/pm/IOnChecksumsReadyListener;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/pm/ApkChecksums$Injector;

    .line 13
    .line 14
    iput-wide p6, p0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;->f$5:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;->f$3:Landroid/content/pm/IOnChecksumsReadyListener;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/pm/ApkChecksums$Injector;

    .line 10
    .line 11
    iget-wide v5, p0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;->f$5:J

    .line 12
    .line 13
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/ApkChecksums;->processRequiredChecksums(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
