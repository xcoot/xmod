.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/usage/AppStandbyInternal;

.field public final synthetic f$3:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$0:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/usage/AppStandbyInternal;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$0:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$1:Z

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/usage/AppStandbyInternal;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Integer;

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    check-cast v4, Ljava/lang/String;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    move-object v6, p3

    .line 15
    check-cast v6, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/16 p1, 0x32

    .line 22
    .line 23
    if-ne p0, p1, :cond_1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    move-object v2, p0

    .line 31
    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    move-object v2, p0

    .line 39
    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
