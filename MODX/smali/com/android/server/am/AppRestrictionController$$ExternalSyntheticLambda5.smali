.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/AppStandbyInternal;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/usage/AppStandbyInternal;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Integer;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/usage/AppStandbyInternal;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 5
    iget v2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$2:I

    .line 7
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Integer;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result v3

    .line 13
    const v4, 0xff00

    .line 16
    and-int/2addr v3, v4

    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p0

    .line 21
    and-int/lit16 p0, p0, 0xff

    .line 23
    invoke-interface {v0, v1, v2, v3, p0}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    .line 26
    return-void
.end method
